.class Lcom/duoku/platform/view/user/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 172
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_23

    .line 175
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_24

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_24

    .line 177
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    .line 223
    :cond_23
    :goto_23
    return-void

    .line 179
    :cond_24
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_59

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 182
    :cond_3e
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->a(Lcom/duoku/platform/view/user/d;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 184
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->a(Lcom/duoku/platform/view/user/d;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 186
    :cond_4f
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_23

    .line 188
    :cond_59
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.duoku.game.helper"

    sget-object v2, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 190
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 192
    iget-object v0, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v0}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v1}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v2}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_toast_down_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 195
    :cond_93
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 196
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v1}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v2}, Lcom/duoku/platform/view/user/d;->o(Lcom/duoku/platform/view/user/d;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_dialog_install_content_msg"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    sget-object v3, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 201
    :cond_c9
    const/16 v0, 0x10

    .line 202
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/f/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 205
    :try_start_d3
    iget-object v2, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v2}, Lcom/duoku/platform/view/user/d;->p(Lcom/duoku/platform/view/user/d;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    if-nez v2, :cond_ea

    .line 207
    iget-object v2, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    iget-object v3, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v3}, Lcom/duoku/platform/view/user/d;->a(Lcom/duoku/platform/view/user/d;)Lcom/duoku/platform/view/user/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/view/user/a;->s()Lcom/duoku/a/a/a/a/a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoku/platform/view/user/d;->a(Lcom/duoku/platform/view/user/d;Lcom/duoku/a/a/a/a/a;)V

    .line 209
    :cond_ea
    iget-object v2, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v2}, Lcom/duoku/platform/view/user/d;->p(Lcom/duoku/platform/view/user/d;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 214
    iget-object v2, p0, Lcom/duoku/platform/view/user/d$5;->a:Lcom/duoku/platform/view/user/d;

    invoke-static {v2}, Lcom/duoku/platform/view/user/d;->p(Lcom/duoku/platform/view/user/d;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_11a
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_11a} :catch_11c

    goto/16 :goto_23

    .line 217
    :catch_11c
    move-exception v0

    .line 219
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_23
.end method
