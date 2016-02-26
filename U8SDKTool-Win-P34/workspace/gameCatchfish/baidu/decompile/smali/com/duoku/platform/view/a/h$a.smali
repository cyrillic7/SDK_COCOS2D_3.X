.class Lcom/duoku/platform/view/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/h;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/a/h;)V
    .registers 2

    .prologue
    .line 384
    iput-object p1, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/a/h;Lcom/duoku/platform/view/a/h$a;)V
    .registers 3

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/h$a;-><init>(Lcom/duoku/platform/view/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/a/h$a;)Lcom/duoku/platform/view/a/h;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    return-object v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 390
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->d()V

    .line 392
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v0, v0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_customer_submit_fail"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_alipay_orderid_request_net_error_tip"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 395
    sparse-switch p3, :sswitch_data_aa

    .line 431
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/duoku/platform/ui/b/c;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 434
    :goto_37
    return-void

    .line 398
    :sswitch_38
    invoke-static {}, Lcom/duoku/platform/g/b;->b()Z

    move-result v2

    if-nez v2, :cond_75

    .line 400
    iget-object v1, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_tip_payment_network_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v3, v3, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_customer_submit_retry"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/view/a/h$a$1;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/a/h$a$1;-><init>(Lcom/duoku/platform/view/a/h$a;)V

    iput-object v1, v0, Lcom/duoku/platform/ui/b/c;->d:Lcom/duoku/platform/ui/b/c$a;

    goto :goto_37

    .line 418
    :cond_75
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/duoku/platform/ui/b/c;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_37

    .line 423
    :sswitch_7d
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->e()V

    goto :goto_37

    .line 426
    :sswitch_85
    iget-object v1, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_tip_payment_network_time_out"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 428
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    invoke-virtual {v1, v4, v0, p4, v5}, Lcom/duoku/platform/ui/b/c;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_37

    .line 395
    nop

    :sswitch_data_aa
    .sparse-switch
        0x1f8 -> :sswitch_85
        0x3e9 -> :sswitch_38
        0x3ec -> :sswitch_7d
    .end sparse-switch
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 440
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->d()V

    .line 442
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v0, v0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v1, v1, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_customer_submit_success"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v0, v0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v2, v2, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v3, "dk_customer_submit_success_context"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v0, v0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v3, v3, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v4, "dk_btn_string_back"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    iget-object v0, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v0, v0, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/duoku/platform/view/a/h$a;->a:Lcom/duoku/platform/view/a/h;

    iget-object v4, v4, Lcom/duoku/platform/view/a/h;->a:Landroid/content/Context;

    const-string v6, "dk_customer_submit_still"

    invoke-static {v4, v6}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->g()I

    move-result v6

    .line 450
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->h()I

    move-result v8

    .line 452
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/duoku/platform/ui/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Landroid/app/Dialog;

    move-result-object v0

    .line 454
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/view/a/h$a$2;

    invoke-direct {v2, p0, v0}, Lcom/duoku/platform/view/a/h$a$2;-><init>(Lcom/duoku/platform/view/a/h$a;Landroid/app/Dialog;)V

    iput-object v2, v1, Lcom/duoku/platform/ui/b/c;->d:Lcom/duoku/platform/ui/b/c$a;

    .line 467
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v1

    new-instance v2, Lcom/duoku/platform/view/a/h$a$3;

    invoke-direct {v2, p0, v0}, Lcom/duoku/platform/view/a/h$a$3;-><init>(Lcom/duoku/platform/view/a/h$a;Landroid/app/Dialog;)V

    iput-object v2, v1, Lcom/duoku/platform/ui/b/c;->e:Lcom/duoku/platform/ui/b/c$b;

    .line 481
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 488
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 495
    return-void
.end method
