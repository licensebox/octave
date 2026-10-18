function lifetime()
 d=tempname();mkdir(d);
 for i=1:100,c=Licensebox('demo',struct('test_key','A6EHv_POEL4dcN0Y50vAmWfk1jCbpQ1fHdyGZBJVMbg'),'directory',d);c.close();end
 c=Licensebox('demo',struct('test_key','A6EHv_POEL4dcN0Y50vAmWfk1jCbpQ1fHdyGZBJVMbg'),'directory',d);c.close();
 try,c.status();error('closed client accepted');catch e,assert(strcmp(e.identifier,'licensebox:closed'));end
end
