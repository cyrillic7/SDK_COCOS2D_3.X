.class Lcom/baidu/paysdk/ui/PayBaseActivity$1;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PayBaseActivity;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    const-wide/16 v2, 0x0

    # setter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J
    invoke-static {v0, v2, v3}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$002(Lcom/baidu/paysdk/ui/PayBaseActivity;J)J

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # getter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$100(Lcom/baidu/paysdk/ui/PayBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "######. onFinish. query return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    const/4 v1, 0x1

    # setter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$102(Lcom/baidu/paysdk/ui/PayBaseActivity;Z)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # getter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$200(Lcom/baidu/paysdk/ui/PayBaseActivity;)Lcom/baidu/paysdk/beans/p;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/p;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # getter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$200(Lcom/baidu/paysdk/ui/PayBaseActivity;)Lcom/baidu/paysdk/beans/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/p;->execBean()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "######. onTick. query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public onTick(J)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # setter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->mTimeAmount:J
    invoke-static {v0, p1, p2}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$002(Lcom/baidu/paysdk/ui/PayBaseActivity;J)J

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # getter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$100(Lcom/baidu/paysdk/ui/PayBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "######. onTick. query return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "######. onTick. query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , remain millis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    const/4 v1, 0x1

    # setter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->isQuerying:Z
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$102(Lcom/baidu/paysdk/ui/PayBaseActivity;Z)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # getter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$200(Lcom/baidu/paysdk/ui/PayBaseActivity;)Lcom/baidu/paysdk/beans/p;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/beans/p;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PayBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PayBaseActivity;

    # getter for: Lcom/baidu/paysdk/ui/PayBaseActivity;->mQueryBean:Lcom/baidu/paysdk/beans/p;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PayBaseActivity;->access$200(Lcom/baidu/paysdk/ui/PayBaseActivity;)Lcom/baidu/paysdk/beans/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/beans/p;->execBean()V

    goto :goto_27
.end method
