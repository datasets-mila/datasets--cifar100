import torchvision

torchvision.datasets.CIFAR100(".", train=True, download=True)
torchvision.datasets.CIFAR100(".", train=False, download=True)

