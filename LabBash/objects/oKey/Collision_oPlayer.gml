if (instance_exists(oLock))
{
	oLock.unlock();
	instance_destroy(); 
}