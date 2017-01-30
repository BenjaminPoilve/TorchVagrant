require 'torch'
require 'nn'
require 'nngraph'
require 'cutorch'
require 'cunn'
require 'cudnn' -- only needed if the loaded model used cudnn as backend. otherwise can be commented out
-- local imports

cmd = torch.CmdLine()
cmd:text()
cmd:text('Convert a GPU checkpoint to CPU checkpoint.')
cmd:text()
cmd:text()

-- parse input params
local opt = cmd:parse(arg)
torch.manualSeed(123)
torch.setdefaulttensortype('torch.FloatTensor') -- for CPU
cutorch.setDevice(opt.gpuid + 1) -- note +1 because lua is 1-indexed
local checkpoint = cudnn.convert(torch.load(opt.model),nn)
local savefile = opt.model .. '_cpu.t7' -- append "cpu.t7" to filename
torch.save(savefile, cudnn.convert(checkpoint,nn):float())
print('saved ' .. savefile)
