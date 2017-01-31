-- usage: DATA_ROOT=/path/to/data/ name=expt1 which_direction=BtoA th test.lua
--
-- code derived from https://github.com/soumith/dcgan.torch
--

require 'image'
require 'nn'
require 'nngraph'
util = paths.dofile('utilities/util.lua')
torch.setdefaulttensortype('torch.FloatTensor')

opt = {
    loadSize = 256,           -- scale images to this size
    fineSize = 256,           --  then crop to this size
    netG_name ='modelNEW'
}



opt.manualSeed = torch.random(1, 10000) -- set seed
print("Random Seed: " .. opt.manualSeed)
torch.manualSeed(opt.manualSeed)
torch.setdefaulttensortype('torch.FloatTensor')
input=util.normalize(image.load('image/0794norm.jpeg', 3, 'float')):resize(1,3,opt.fineSize,opt.fineSize)
local target = torch.FloatTensor(1,3,opt.fineSize,opt.fineSize)
local netG = torch.load(paths.concat(opt.netG_name .. '.t7'))
target = netG:forward(input)
image.save('result.png', target:resize(3,opt.fineSize,opt.fineSize))
