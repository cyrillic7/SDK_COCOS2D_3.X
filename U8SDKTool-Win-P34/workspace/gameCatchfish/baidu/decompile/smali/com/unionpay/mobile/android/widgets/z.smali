.class public abstract Lcom/unionpay/mobile/android/widgets/z;
.super Lcom/unionpay/mobile/android/widgets/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/z$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Lcom/unionpay/mobile/android/widgets/t;

.field private n:Lcom/unionpay/mobile/android/widgets/z$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;B)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;B)V
    .registers 9

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p3}, Lcom/unionpay/mobile/android/widgets/y;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->n:Lcom/unionpay/mobile/android/widgets/z$a;

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/z;->a:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/z;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/z;->a:I

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/z;->h:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->a()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->d()V

    :cond_2b
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/z;->l:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    const-string v1, "placeholder"

    invoke-static {p3, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    new-instance v1, Lcom/unionpay/mobile/android/widgets/aa;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Lcom/unionpay/mobile/android/widgets/z;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    new-instance v1, Lcom/unionpay/mobile/android/widgets/ab;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/widgets/ab;-><init>(Lcom/unionpay/mobile/android/widgets/z;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    const/16 v1, 0x7d0

    sget v2, Lcom/unionpay/mobile/android/global/a;->v:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/widgets/t;

    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/ae;

    if-eqz v0, :cond_c7

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/z;->h:Z

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    :cond_90
    :goto_90
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/k;

    if-eqz v0, :cond_167

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x3f3

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a5
    return-void

    :cond_a6
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/z;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/z;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->c(Ljava/lang/String;)V

    goto :goto_90

    :cond_c7
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/ao;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto :goto_90

    :cond_d5
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/ag;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto :goto_90

    :cond_e3
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto :goto_90

    :cond_f1
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/at;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto :goto_90

    :cond_ff
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/an;

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto :goto_90

    :cond_10d
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/e;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_90

    :cond_11c
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/ad;

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_90

    :cond_12b
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/bc;

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_90

    :cond_13a
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/as;

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->aZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_90

    :cond_149
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/au;

    if-eqz v0, :cond_158

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ba:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_90

    :cond_158
    instance-of v0, p0, Lcom/unionpay/mobile/android/widgets/f;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Ljava/lang/String;)Landroid/widget/TextView;

    goto/16 :goto_90

    :cond_167
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/z;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x3f5

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a5
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/z;)Lcom/unionpay/mobile/android/widgets/z$a;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->n:Lcom/unionpay/mobile/android/widgets/z$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/z$a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/z;->n:Lcom/unionpay/mobile/android/widgets/z$a;

    return-void
.end method

.method protected final a(Landroid/view/View;)Z
    .registers 11

    const v8, 0x1020002

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v3, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "v getGlobalVisibleRect():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-array v0, v7, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const-string v4, "uppay"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " locationW = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v7, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v5, "uppay"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " locationS = ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v4, v4, v1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0xa

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_fe

    :goto_ad
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v3, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " getLocalVisibleRect = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v0, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getGlobalVisibleRect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_fe
    move v1, v2

    goto :goto_ad
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/t;)Z
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c()Z
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/z;->h:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/z;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->e()V

    :cond_d
    return-void
.end method
