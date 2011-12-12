# TODO: Add comment
# 
# Author: jefferis
###############################################################################
require(jpeg)
require(png)

#' Identify the type of an image using an initial magic value 
#'
#' Will seek to start of file
#' Currently works for png, jpeg and BMP images.
#' @param source Path to file or connection
#' @param Verbose Whether to write a message to console on failure (Default F)
#' @return character value corresponding to standard file extension of image format (i.e. jpg, png, bmp)
#' @export
image_type<-function(source,Verbose=FALSE){
  if (inherits(source, "connection")) 
    seek(source, 0)
  magic = readBin(source, what = 0L, n = 8, size = 1L, signed = FALSE)
  if(isTRUE(all.equal(magic[1:2], c(66, 77))))
		return('bmp')
	else if(isTRUE(all.equal(magic[1:8], 
			          c(0x89,0x50,0x4E,0x47,0x0D, 0x0A, 0x1A, 0x0A))) )
		return('png')
	else if(isTRUE(all.equal(magic[1:2], c(0xFF, 0xD8))))
		return('jpg')
	# otherwise we failed to identify the file
	if(Verbose) warning("Failed to identify image type of: ",source,
		        ' with magic: ',format.hexmode(as.raw(magic)))
	return(NA)
}

#' Read in a bitmap image in JPEG, PNG or BMP format
#' 
#' @param f Path to image file
#' @param channel Channel to return for RGB image
#' @param IdentifyByMagic Identify by magic bytes at start of file.
#' @return return value
#' @export
#' @seealso \code{\link[jpeg]{readJPEG}},\code{\link[png]{readPNG}}
read.bitmap<-function(f,channel,IdentifyByMagic=FALSE){
  
	ext=tolower(sub(".*\\.([^.]+)$","\\1",f))
	if(!file.exists(f)) stop("File: ",f," does not exist.")
  if(IdentifyByMagic) ext=image_type(f)
	if(ext=='png'){
		im=readPNG(f)
	} else if (ext == 'jpeg' || ext == 'jpg'){
		im=readJPEG(f)
	} else if (ext == 'bmp'){
		im=read.bmp(f)
	} else {
		stop("File f: ",f," does not appear to be a PNG, BMP or JPEG")
	}
	if(!missing(channel) && length(dim(im))==3) im=im[,,channel]
	im
}
