.class Lcom/u8/sdk/ane/U8Function$1;
.super Ljava/lang/Object;
.source "U8Function.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ane/U8Function;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ane/U8Function;

.field private final synthetic val$context:Lcom/adobe/fre/FREContext;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ane/U8Function;Lcom/adobe/fre/FREContext;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    iput-object p2, p0, Lcom/u8/sdk/ane/U8Function$1;->val$context:Lcom/adobe/fre/FREContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_init"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/ane/U8Function$1;->val$context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/plugin/U8User;->login()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_pay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/plugin/U8Pay;->pay(Lcom/u8/sdk/PayParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_showAccountCenter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/plugin/U8User;->showAccountCenter()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_logout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/plugin/U8User;->logout()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_switchLogin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/plugin/U8User;->switchLogin()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_submitExtraData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/u8/sdk/plugin/U8User;->submitExtraData(Lcom/u8/sdk/UserExtraData;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/u8/sdk/ane/U8Function$1;->this$0:Lcom/u8/sdk/ane/U8Function;

    # getter for: Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/u8/sdk/ane/U8Function;->access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "u8_exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/plugin/U8User;->exit()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "U8SDK_ANE"

    const-string v2, "the funcName now not supported in U8Function.java"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
