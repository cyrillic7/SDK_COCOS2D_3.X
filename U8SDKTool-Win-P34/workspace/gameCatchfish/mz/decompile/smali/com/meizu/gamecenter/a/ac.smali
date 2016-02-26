.class public final Lcom/meizu/gamecenter/a/ac;
.super Lcom/meizu/gamecenter/a/j;
.source "SourceFile"


# instance fields
.field private c:Lcom/meizu/gamecenter/sdk/MzLoginListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;Lcom/meizu/gamecenter/a/s;)V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0, p1, p3}, Lcom/meizu/gamecenter/a/j;-><init>(Landroid/app/Activity;Lcom/meizu/gamecenter/a/s;)V

    .line 20
    iput-object p2, p0, Lcom/meizu/gamecenter/a/ac;->c:Lcom/meizu/gamecenter/sdk/MzLoginListener;

    .line 21
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ac;->c:Lcom/meizu/gamecenter/sdk/MzLoginListener;

    if-nez v0, :cond_11

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MzLoginListener cant be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_11
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    .prologue
    .line 51
    const-string v0, "LoginController"

    const-string v1, "service exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ac;->c:Lcom/meizu/gamecenter/sdk/MzLoginListener;

    const/16 v1, 0x64

    const/4 v2, 0x0

    const-string v3, "\u6e38\u620f\u670d\u52a1\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/gamecenter/sdk/MzLoginListener;->onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 45
    const-string v0, "LoginController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ac;->c:Lcom/meizu/gamecenter/sdk/MzLoginListener;

    invoke-static {p1}, Lcom/meizu/gamecenter/sdk/LoginResultCode;->fixCode(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Lcom/meizu/gamecenter/sdk/MzLoginListener;->onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 28
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 29
    const-string v0, "accountUid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 30
    const-string v0, "authToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 31
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "accountUid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "authToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Lcom/meizu/gamecenter/sdk/MzAccountInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/meizu/gamecenter/sdk/MzAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ac;->c:Lcom/meizu/gamecenter/sdk/MzLoginListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/meizu/gamecenter/sdk/MzLoginListener;->onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V

    .line 41
    :goto_36
    return-void

    .line 36
    :cond_37
    const-string v0, "retry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 37
    invoke-virtual {p0}, Lcom/meizu/gamecenter/a/ac;->b()V

    goto :goto_36

    .line 39
    :cond_43
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ac;->c:Lcom/meizu/gamecenter/sdk/MzLoginListener;

    const/16 v1, 0x65

    const-string v2, "\u672a\u77e5\u5f02\u5e38"

    invoke-interface {v0, v1, v4, v2}, Lcom/meizu/gamecenter/sdk/MzLoginListener;->onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V

    goto :goto_36
.end method

.method protected final a(Lcom/meizu/a/d;Lcom/meizu/a/a;)V
    .registers 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ac;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v2, "packageName"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "appid"

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ac;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/a/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "appkey"

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ac;->b:Lcom/meizu/gamecenter/a/s;

    invoke-virtual {v2}, Lcom/meizu/gamecenter/a/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1, v1, p2}, Lcom/meizu/a/d;->a(Landroid/os/Bundle;Lcom/meizu/a/a;)V

    .line 65
    return-void
.end method
