.class public abstract Lcom/unionpay/mobile/android/views/order/AbstractMethod;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;,
        Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;
    }
.end annotation


# static fields
.field protected static final a:I


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;

.field protected f:Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/unionpay/mobile/android/global/b;->a:I

    sput v0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->setOrientation(I)V

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    :try_start_3
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    :cond_7
    :goto_7
    return-object v0

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method

.method protected static a(Landroid/widget/TextView;)V
    .registers 4

    const v2, -0x593503

    if-nez p0, :cond_6

    :goto_5
    return-void

    :cond_6
    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0xa35c26

    const v1, -0x666667

    invoke-static {v0, v2, v2, v1}, Lcom/unionpay/mobile/android/utils/e;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_5
.end method

.method protected static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final a()V
    .registers 9

    const/4 v2, -0x2

    const/4 v7, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Landroid/widget/RelativeLayout;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b(Landroid/widget/RelativeLayout;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    sget v3, Lcom/unionpay/mobile/android/global/b;->b:I

    sget v4, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v5, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v6, Lcom/unionpay/mobile/android/global/b;->d:I

    invoke-static {v3, v4, v5, v6}, Lcom/unionpay/mobile/android/utils/e;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    sget v3, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    new-instance v3, Lcom/unionpay/mobile/android/views/order/a;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/views/order/a;-><init>(Lcom/unionpay/mobile/android/views/order/AbstractMethod;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/unionpay/mobile/android/global/b;->n:I

    invoke-direct {v2, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    const/high16 v4, 0x41200000

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->c(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method

.method public abstract a(Landroid/widget/RelativeLayout;)V
.end method

.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->f:Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->e:Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/widget/RelativeLayout;)V
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public abstract c()Lcom/unionpay/mobile/android/upviews/a$a;
.end method

.method public abstract c(Landroid/widget/RelativeLayout;)V
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method protected final g()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
