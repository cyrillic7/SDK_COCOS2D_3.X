.class public final Lcom/unionpay/mobile/android/nocard/views/bh;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/d$a;


# instance fields
.field private p:Lcom/unionpay/mobile/android/upviews/d;

.field private q:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->q:Landroid/view/ViewGroup;

    const/16 v0, 0xe

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->f:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bh;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bh;->b()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bh;->d()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method protected final b()V
    .registers 6

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ax;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aa:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final d()V
    .registers 8

    const/16 v6, 0xc

    const/4 v5, 0x3

    const/4 v4, -0x2

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->d()V

    new-instance v0, Lcom/unionpay/mobile/android/upviews/d;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/unionpay/mobile/android/upviews/d;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upviews/d$a;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/bi;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/bi;-><init>(Lcom/unionpay/mobile/android/nocard/views/bh;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->q:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/unionpay/mobile/android/global/a;->t:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->k:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->q:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->q:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bh;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->l()V

    return-void
.end method

.method public final r()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->q:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final s()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->p:Lcom/unionpay/mobile/android/upviews/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bh;->q:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
