.class Lcom/duoku/platform/floatview/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/floatview/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/high16 v6, 0x41200000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 401
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 403
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_29e

    move v0, v2

    .line 554
    :cond_10
    :goto_10
    return v0

    .line 406
    :pswitch_11
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;Z)V

    .line 407
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;I)V

    .line 408
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;I)V

    .line 409
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;F)V

    .line 410
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;F)V

    .line 411
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->c(Lcom/duoku/platform/floatview/a;F)V

    .line 412
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->d(Lcom/duoku/platform/floatview/a;F)V

    .line 417
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->c(Lcom/duoku/platform/floatview/a;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 422
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->d(Lcom/duoku/platform/floatview/a;)I

    move-result v0

    if-nez v0, :cond_89

    .line 424
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_window_visitor_hint_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->r(Lcom/duoku/platform/floatview/a;)Z

    move-result v0

    goto :goto_10

    .line 428
    :cond_89
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->f(Lcom/duoku/platform/floatview/a;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 430
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_window_normal_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_82

    .line 434
    :cond_a5
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_suspension_window_normal_hint_press"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_82

    .line 441
    :pswitch_b9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 444
    int-to-float v4, v2

    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->g(Lcom/duoku/platform/floatview/a;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_e3

    int-to-float v4, v3

    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->h(Lcom/duoku/platform/floatview/a;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_132

    .line 446
    :cond_e3
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4}, Lcom/duoku/platform/floatview/a;->j(Lcom/duoku/platform/floatview/a;)I

    move-result v4

    sub-int v4, v2, v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 447
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->h(Lcom/duoku/platform/floatview/a;)F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 449
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->k(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_11f

    .line 451
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->k(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    :cond_11f
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;F)V

    .line 455
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    int-to-float v2, v3

    invoke-static {v1, v2}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;F)V

    .line 456
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;Z)V

    goto/16 :goto_82

    .line 460
    :cond_132
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;Z)V

    goto/16 :goto_82

    .line 465
    :pswitch_139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 466
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    .line 468
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 470
    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 475
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_16f

    .line 477
    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->d(Lcom/duoku/platform/floatview/a;)I

    move-result v5

    if-nez v5, :cond_1c4

    .line 479
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "dk_suspension_window_visitor_hint"

    invoke-static {v6, v7}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    :cond_16f
    :goto_16f
    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 495
    aget v4, v4, v1

    .line 498
    int-to-float v5, v2

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->g(Lcom/duoku/platform/floatview/a;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->l(Lcom/duoku/platform/floatview/a;)Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1fb

    .line 500
    iget-object v2, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v2}, Lcom/duoku/platform/floatview/a;->l(Lcom/duoku/platform/floatview/a;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v4, v2, :cond_1f5

    .line 502
    iget-object v2, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v2}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 504
    iget-object v2, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v2, v0}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;Z)V

    .line 514
    :goto_1b2
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->k(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v2}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 515
    goto/16 :goto_10

    .line 483
    :cond_1c4
    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->f(Lcom/duoku/platform/floatview/a;)Z

    move-result v5

    if-nez v5, :cond_1e0

    .line 485
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "dk_suspension_window_normal"

    invoke-static {v6, v7}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_16f

    .line 489
    :cond_1e0
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->e(Lcom/duoku/platform/floatview/a;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "dk_suspension_window_normal_hint"

    invoke-static {v6, v7}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16f

    .line 510
    :cond_1f5
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;Z)V

    goto :goto_1b2

    .line 518
    :cond_1fb
    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4}, Lcom/duoku/platform/floatview/a;->l(Lcom/duoku/platform/floatview/a;)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_270

    .line 520
    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 522
    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4, v0}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;Z)V

    .line 533
    :goto_216
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    .line 534
    invoke-static {}, Lcom/duoku/platform/floatview/a;->g()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    .line 535
    int-to-float v2, v2

    iget-object v6, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v6}, Lcom/duoku/platform/floatview/a;->m(Lcom/duoku/platform/floatview/a;)F

    move-result v6

    sub-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gez v2, :cond_24c

    int-to-float v2, v3

    iget-object v3, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v3}, Lcom/duoku/platform/floatview/a;->n(Lcom/duoku/platform/floatview/a;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_288

    .line 537
    :cond_24c
    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1, v0}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;Z)V

    .line 545
    :goto_251
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->k(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->p(Lcom/duoku/platform/floatview/a;)I

    move-result v0

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->b(I)V

    .line 547
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->q(Lcom/duoku/platform/floatview/a;)V

    goto/16 :goto_82

    .line 527
    :cond_270
    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4}, Lcom/duoku/platform/floatview/a;->i(Lcom/duoku/platform/floatview/a;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v5}, Lcom/duoku/platform/floatview/a;->l(Lcom/duoku/platform/floatview/a;)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 529
    iget-object v4, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v4, v1}, Lcom/duoku/platform/floatview/a;->b(Lcom/duoku/platform/floatview/a;Z)V

    goto :goto_216

    .line 541
    :cond_288
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0, v1}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;Z)V

    .line 542
    iget-object v0, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v0}, Lcom/duoku/platform/floatview/a;->o(Lcom/duoku/platform/floatview/a;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/floatview/a$2;->a:Lcom/duoku/platform/floatview/a;

    invoke-static {v1}, Lcom/duoku/platform/floatview/a;->a(Lcom/duoku/platform/floatview/a;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_251

    .line 403
    nop

    :pswitch_data_29e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_139
        :pswitch_b9
    .end packed-switch
.end method
