.class public Lcom/u8/sdk/ane/U8Function;
.super Ljava/lang/Object;
.source "U8Function.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private funcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ane/U8Function;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "U8SDK_ANE"

    const-string v4, "the funcName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    const-string v3, "U8SDK_ANE"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "funcName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";params:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    const-string v4, "u8_isSupportAccoutCenter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v3

    const-string v4, "showAccountCenter"

    invoke-virtual {v3, v4}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    const-string v4, "u8_isSupportExit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v3

    const-string v4, "exit"

    invoke-virtual {v3, v4}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/u8/sdk/ane/U8Function;->funcName:Ljava/lang/String;

    const-string v4, "u8_isSupportLogout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v3

    const-string v4, "logout"

    invoke-virtual {v3, v4}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/u8/sdk/ane/U8Function$1;

    invoke-direct {v4, p0, p1}, Lcom/u8/sdk/ane/U8Function$1;-><init>(Lcom/u8/sdk/ane/U8Function;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
