.class public final Lcom/unionpay/mobile/android/nocard/views/bc$a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/nocard/views/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/bc;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/nocard/views/bc;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->b:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/bc$a;->setOrientation(I)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v1, -0x2

    const/4 v4, -0x1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_c

    :cond_b
    return-void

    :cond_c
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/bc;->d:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mobile/android/nocard/views/bc$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/unionpay/mobile/android/global/b;->n:I

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    :goto_2b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_b

    :try_start_31
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "label"

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v6, v6, Lcom/unionpay/mobile/android/nocard/views/bc;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v6, -0x342f27

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v0, :cond_65

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v7, v7, Lcom/unionpay/mobile/android/nocard/views/bc;->d:Landroid/content/Context;

    const/high16 v8, 0x41400000

    invoke-static {v7, v8}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_65
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->b:Landroid/content/Context;

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->b:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v7, v7, Lcom/unionpay/mobile/android/nocard/views/bc;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v8, 0x7de

    invoke-virtual {v7, v8}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/unionpay/mobile/android/nocard/views/bf;

    invoke-direct {v7, p0, v1}, Lcom/unionpay/mobile/android/nocard/views/bf;-><init>(Lcom/unionpay/mobile/android/nocard/views/bc$a;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, -0xcccccd

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xf

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v7, 0x9

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v7, 0x41400000

    invoke-static {v5, v7}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41a00000

    invoke-static {v5, v1}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v4, v4, Lcom/unionpay/mobile/android/nocard/views/bc;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v7, 0x3ea

    invoke-virtual {v4, v7}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    const/4 v8, -0x1

    invoke-virtual {v4, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xb

    const/4 v8, -0x1

    invoke-virtual {v4, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41400000

    invoke-static {v5, v1}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_10f

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v4, v4, Lcom/unionpay/mobile/android/nocard/views/bc;->d:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v4, -0x342f27

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_10f
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_10f} :catch_113

    :cond_10f
    :goto_10f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2b

    :catch_113
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10f
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bc$a;->removeAllViews()V

    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bc;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a:Lcom/unionpay/mobile/android/nocard/views/bc;

    iget-object v2, v2, Lcom/unionpay/mobile/android/nocard/views/bc;->d:Landroid/content/Context;

    const/high16 v3, 0x41400000

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bc$a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, -0x61b1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v2, v1}, Lcom/unionpay/mobile/android/nocard/views/bc$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3f
    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/bc$a;->a(Lorg/json/JSONArray;)V

    return-void
.end method
