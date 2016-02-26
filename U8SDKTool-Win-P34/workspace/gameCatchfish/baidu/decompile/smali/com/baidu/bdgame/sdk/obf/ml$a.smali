.class Lcom/baidu/bdgame/sdk/obf/ml$a;
.super Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ml;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-direct {p0}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$1;)V
    .registers 3

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;)V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lcom/baidu/bdgame/sdk/obf/ml;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz p1, :cond_32

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 243
    :try_start_38
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 245
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_8e

    .line 246
    check-cast v0, Lorg/json/JSONObject;

    .line 247
    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 249
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lcom/baidu/bdgame/sdk/obf/ml;Lorg/json/JSONObject;)V

    .line 250
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->d(Lcom/baidu/bdgame/sdk/obf/ml;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_59} :catch_5a

    .line 262
    :goto_59
    return-void

    .line 254
    :catch_5a
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    const-class v1, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lcom/baidu/bdgame/sdk/obf/ml;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service connect exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_8e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->c(Lcom/baidu/bdgame/sdk/obf/ml;)V

    .line 261
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$a;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->d(Lcom/baidu/bdgame/sdk/obf/ml;)V

    goto :goto_59
.end method
