.class Lcom/duoku/platform/view/user/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;I)V
    .registers 4

    .prologue
    .line 255
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/16 v0, 0x3c

    iput v0, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    .line 257
    iput p2, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    .line 258
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 263
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->a(Lcom/duoku/platform/view/user/a;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 265
    iget v0, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    if-lez v0, :cond_c4

    .line 267
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;)I

    move-result v0

    if-ne v0, v3, :cond_6a

    .line 269
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v3}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "dk_get_verify_code_again"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget v0, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    .line 271
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->e(Lcom/duoku/platform/view/user/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 312
    :cond_69
    :goto_69
    return-void

    .line 273
    :cond_6a
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;)I

    move-result v0

    if-ne v0, v1, :cond_69

    .line 275
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v2}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v3}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "dk_get_verify_code_again"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget v0, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoku/platform/view/user/a$a;->b:I

    .line 277
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->e(Lcom/duoku/platform/view/user/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_69

    .line 282
    :cond_c4
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;)I

    move-result v0

    if-ne v0, v3, :cond_101

    .line 284
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_btn_small_blue_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 285
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_btn_string_get_verify_code"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 286
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_69

    .line 288
    :cond_101
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;)I

    move-result v0

    if-ne v0, v1, :cond_69

    .line 290
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_btn_small_blue_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 291
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_verify_to_old_phone"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_69

    .line 298
    :cond_13e
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;)I

    move-result v0

    if-ne v0, v3, :cond_17b

    .line 300
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_btn_small_blue_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 301
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_btn_string_get_verify_code"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 302
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->c(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_69

    .line 304
    :cond_17b
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->b(Lcom/duoku/platform/view/user/a;)I

    move-result v0

    if-ne v0, v1, :cond_69

    .line 306
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_btn_small_blue_selector"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 307
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v1}, Lcom/duoku/platform/view/user/a;->d(Lcom/duoku/platform/view/user/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_verify_to_old_phone"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 308
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$a;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->f(Lcom/duoku/platform/view/user/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_69
.end method
