.class Lcom/duoku/platform/a/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/a/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/a/g;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/duoku/platform/a/g;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    iput p2, p0, Lcom/duoku/platform/a/g$1;->b:I

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 123
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_24

    .line 127
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-eq v1, v2, :cond_25

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_25

    .line 129
    invoke-static {}, Lcom/duoku/platform/util/q;->a()Z

    .line 176
    :cond_24
    :goto_24
    return-void

    .line 131
    :cond_25
    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v1

    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v1, v2, :cond_59

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 134
    :cond_3f
    iget-object v0, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v0}, Lcom/duoku/platform/a/g;->a(Lcom/duoku/platform/a/g;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 136
    iget-object v0, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v0}, Lcom/duoku/platform/a/g;->a(Lcom/duoku/platform/a/g;)Lcom/duoku/platform/view/user/a;

    move-result-object v0

    iput-boolean v3, v0, Lcom/duoku/platform/view/user/a;->w:Z

    .line 138
    :cond_4f
    iget-object v0, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v0}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/content/Context;)V

    goto :goto_24

    .line 140
    :cond_59
    iget-object v0, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v0}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.duoku.game.helper"

    sget-object v2, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 143
    invoke-static {}, Lcom/duoku/platform/util/f;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 145
    iget-object v0, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v0}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v1}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v2}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_toast_down_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_24

    .line 148
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

    .line 149
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v1}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v2}, Lcom/duoku/platform/a/g;->b(Lcom/duoku/platform/a/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_dialog_install_content_msg"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/view/user/a;->c:Ljava/lang/String;

    .line 150
    sget-object v3, Lcom/duoku/platform/view/user/a;->i:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 154
    :cond_c9
    const/4 v6, 0x1

    .line 155
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v2}, Lcom/duoku/platform/a/g;->c(Lcom/duoku/platform/a/g;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/duoku/platform/a/g$1;->b:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoku/platform/h/q;

    invoke-virtual {v2}, Lcom/duoku/platform/h/q;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v3}, Lcom/duoku/platform/a/g;->c(Lcom/duoku/platform/a/g;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/duoku/platform/a/g$1;->b:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duoku/platform/h/q;

    invoke-virtual {v3}, Lcom/duoku/platform/h/q;->f()Ljava/lang/String;

    move-result-object v3

    .line 156
    iget-object v4, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v4}, Lcom/duoku/platform/a/g;->c(Lcom/duoku/platform/a/g;)Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/duoku/platform/a/g$1;->b:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/duoku/platform/h/q;

    invoke-virtual {v4}, Lcom/duoku/platform/h/q;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :try_start_10a
    iget-object v1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    iget-object v1, v1, Lcom/duoku/platform/a/g;->a:Lcom/duoku/a/a/a/a/a;

    if-nez v1, :cond_11e

    .line 161
    iget-object v1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    iget-object v2, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    invoke-static {v2}, Lcom/duoku/platform/a/g;->a(Lcom/duoku/platform/a/g;)Lcom/duoku/platform/view/user/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/view/user/a;->s()Lcom/duoku/a/a/a/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/a/g;->a:Lcom/duoku/a/a/a/a/a;

    .line 163
    :cond_11e
    iget-object v1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    iget-object v1, v1, Lcom/duoku/platform/a/g;->a:Lcom/duoku/a/a/a/a/a;

    if-eqz v1, :cond_24

    .line 167
    iget-object v1, p0, Lcom/duoku/platform/a/g$1;->a:Lcom/duoku/platform/a/g;

    iget-object v1, v1, Lcom/duoku/platform/a/g;->a:Lcom/duoku/a/a/a/a/a;

    invoke-interface {v1, v6, v0}, Lcom/duoku/a/a/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    .line 168
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
    :try_end_14a
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_14a} :catch_14c

    goto/16 :goto_24

    .line 170
    :catch_14c
    move-exception v0

    .line 172
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_24
.end method
