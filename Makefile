.PHONY: all success failure

all: success failure

success:
	@ffmpeg -i success.mov -filter_complex "[0:v] palettegen" success.png
	@ffmpeg -i success.mov -i success.png -filter_complex "[0:v] fps=10,scale=2048:-1 [new];[new][1:v] paletteuse" success.gif

failure:
	@ffmpeg -i failure.mov -filter_complex "[0:v] palettegen" failure.png
	@ffmpeg -i failure.mov -i failure.png -filter_complex "[0:v] fps=10,scale=2048:-1 [new];[new][1:v] paletteuse" failure.gif

