.class Lcom/baidu/bdgame/sdk/obf/ml$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ml;

.field private b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

.field private c:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$1;)V
    .registers 3

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ml$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    if-eqz v0, :cond_b

    .line 217
    :try_start_4
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->c:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;

    invoke-interface {v0, v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;->unregisterCallback(Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    .line 222
    :cond_b
    :goto_b
    return-void

    .line 218
    :catch_c
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 196
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lcom/baidu/bdgame/sdk/obf/ml;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p2}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    .line 200
    :try_start_2e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->c:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;

    if-nez v0, :cond_3c

    .line 201
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ml$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ml$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ml;Lcom/baidu/bdgame/sdk/obf/ml$1;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->c:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;

    .line 203
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->c:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener$Stub;

    invoke-interface {v0, v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;->registerCallback(Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfoListener;)V

    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ml;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;->getInfo(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4a} :catch_4b

    .line 212
    :goto_4a
    return-void

    .line 205
    :catch_4b
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const-class v1, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

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

    .line 209
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->c(Lcom/baidu/bdgame/sdk/obf/ml;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->d(Lcom/baidu/bdgame/sdk/obf/ml;)V

    goto :goto_4a
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 226
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->a:Lcom/baidu/bdgame/sdk/obf/ml;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ml;->b(Lcom/baidu/bdgame/sdk/obf/ml;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service disconnected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$b;->b:Lcom/baidu/sumeru/sso/aidl/BaiduSSOInfo;

    .line 229
    return-void
.end method
