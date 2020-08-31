package org.learn.springchannel;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.learn.batch.DemoReaderAndWrite;
import org.springframework.batch.core.*;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.json.JsonItemReader;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.ResourceUtils;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {ResourceUtils.CLASSPATH_URL_PREFIX + "spring-batch-cfg.xml"})
public class DBLinkedTester implements ApplicationContextAware {

    @Autowired
    private JobLauncher jobLauncher;

    @Test
    public void test() throws Exception {
        Job demoJob = appCtx.getBean("demoJob", Job.class);
        JobParametersBuilder jpb = new JobParametersBuilder();
        JobParameters jobParameters = jpb.addString("today", "2020-08-19")
                .addString("factoryId", "009575").toJobParameters();
        jobLauncher.run(demoJob, jobParameters);
    }

    private ApplicationContext appCtx;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.appCtx = applicationContext;
    }
}
