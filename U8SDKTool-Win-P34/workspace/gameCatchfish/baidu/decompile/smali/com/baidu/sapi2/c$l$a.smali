.class Lcom/baidu/sapi2/c$l$a;
.super Ljava/lang/Object;
.source "SapiAccountRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c$l;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/c$l;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c$l;)V
    .registers 2

    .prologue
    .line 3237
    iput-object p1, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    iget-object v0, v0, Lcom/baidu/sapi2/c$l;->g:Lcom/baidu/sapi2/c;

    iget-object v1, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    iget-object v1, v1, Lcom/baidu/sapi2/c$l;->d:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v2, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    iget-object v2, v2, Lcom/baidu/sapi2/c$l;->e:Lcom/baidu/cloudsdk/common/http/RequestParams;

    iget-object v3, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    iget-object v3, v3, Lcom/baidu/sapi2/c$l;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    iget-object v4, v4, Lcom/baidu/sapi2/c$l;->c:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/baidu/sapi2/c$l$a;->a:Lcom/baidu/sapi2/c$l;

    iget-object v5, v5, Lcom/baidu/sapi2/c$l;->f:[Z

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/cloudsdk/common/http/RequestParams;Landroid/os/Handler;Ljava/lang/Runnable;[Z)V

    .line 3241
    return-void
.end method
