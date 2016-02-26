.class Lcom/duoku/platform/view/a/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/e;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {}, Lcom/duoku/platform/util/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->b(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->d(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/util/f;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 355
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->b(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    :cond_31
    :goto_31
    return-void

    .line 359
    :cond_32
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 361
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_assistant_down_no_net"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31

    .line 365
    :cond_5c
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->e(Lcom/duoku/platform/view/a/e;)I

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->e(Lcom/duoku/platform/view/a/e;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_31

    .line 368
    :cond_6e
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-ne v0, v1, :cond_85

    .line 370
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    :cond_85
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "dk_toast_down_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 373
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 374
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {}, Lcom/duoku/platform/util/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v0}, Lcom/duoku/platform/view/a/e;->c(Lcom/duoku/platform/view/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v1}, Lcom/duoku/platform/view/a/e;->f(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v2}, Lcom/duoku/platform/view/a/e;->g(Lcom/duoku/platform/view/a/e;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/a/e$3;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {v3}, Lcom/duoku/platform/view/a/e;->b(Lcom/duoku/platform/view/a/e;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/duoku/platform/util/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    goto/16 :goto_31
.end method
