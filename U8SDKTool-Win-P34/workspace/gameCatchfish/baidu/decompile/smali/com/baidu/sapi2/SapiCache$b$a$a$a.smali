.class Lcom/baidu/sapi2/SapiCache$b$a$a$a;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/SapiCache$b$a$a;->a(Lcom/baidu/sapi2/b$a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiCache$b$a$a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiCache$b$a$a;)V
    .registers 2

    .prologue
    .line 375
    iput-object p1, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 389
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->c:Lcom/baidu/sapi2/b$a$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 380
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$b$a;->c:Lcom/baidu/sapi2/b;

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/b;)V

    .line 381
    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v1, v1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/sapi2/b$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/sapi2/SapiCache;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 383
    iget-object v0, p0, Lcom/baidu/sapi2/SapiCache$b$a$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a$a;->a:Lcom/baidu/sapi2/SapiCache$b$a;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiCache$b$a;->a:Lcom/baidu/sapi2/b$a$a;

    iget-object v0, v0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/b$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;[B)V

    .line 385
    :cond_73
    return-void
.end method
