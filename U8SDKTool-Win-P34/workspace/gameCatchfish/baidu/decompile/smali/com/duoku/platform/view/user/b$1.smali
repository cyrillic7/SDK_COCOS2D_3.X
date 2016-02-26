.class Lcom/duoku/platform/view/user/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/b;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/b;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 147
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_23

    .line 150
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_24

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_24

    .line 152
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    .line 201
    :cond_23
    :goto_23
    return-void

    .line 154
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

    .line 156
    :cond_3e
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->m(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 158
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->m(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 160
    :cond_4f
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_23

    .line 163
    :cond_59
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.duoku.game.helper"

    sget-object v2, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 165
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v0}, Lcom/duoku/platform/view/user/b;->k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v1}, Lcom/duoku/platform/view/user/b;->m(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/view/user/a;

    move-result-object v1

    const-string v2, "dk_toast_down_text"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_23

    .line 170
    :cond_89
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/app/Activity;)V

    .line 171
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v1}, Lcom/duoku/platform/view/user/b;->m(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/view/user/a;

    move-result-object v1

    const-string v2, "dk_dialog_install_content_msg"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    .line 172
    sget-object v3, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 176
    :cond_b5
    const/16 v0, 0x8

    .line 177
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v2}, Lcom/duoku/platform/view/user/b;->n(Lcom/duoku/platform/view/user/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v3}, Lcom/duoku/platform/view/user/b;->k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v4}, Lcom/duoku/platform/view/user/b;->k(Lcom/duoku/platform/view/user/b;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/duoku/platform/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/duoku/platform/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :try_start_d9
    iget-object v2, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v2}, Lcom/duoku/platform/view/user/b;->o(Lcom/duoku/platform/view/user/b;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    if-nez v2, :cond_f0

    .line 182
    iget-object v2, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    iget-object v3, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v3}, Lcom/duoku/platform/view/user/b;->m(Lcom/duoku/platform/view/user/b;)Lcom/duoku/platform/view/user/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/view/user/a;->s()Lcom/duoku/a/a/a/a/a;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duoku/platform/view/user/b;->a(Lcom/duoku/platform/view/user/b;Lcom/duoku/a/a/a/a/a;)V

    .line 184
    :cond_f0
    iget-object v2, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v2}, Lcom/duoku/platform/view/user/b;->o(Lcom/duoku/platform/view/user/b;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 188
    iget-object v2, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v2}, Lcom/duoku/platform/view/user/b;->o(Lcom/duoku/platform/view/user/b;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 190
    iget-object v2, p0, Lcom/duoku/platform/view/user/b$1;->a:Lcom/duoku/platform/view/user/b;

    invoke-static {v2}, Lcom/duoku/platform/view/user/b;->o(Lcom/duoku/platform/view/user/b;)Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 191
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
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_128} :catch_12a

    goto/16 :goto_23

    .line 194
    :catch_12a
    move-exception v0

    .line 196
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_23
.end method
