.class public final Lcom/unionpay/mobile/android/widgets/ai;
.super Lcom/unionpay/mobile/android/widgets/y;


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnClickListener;

.field private final n:Landroid/widget/AdapterView$OnItemClickListener;

.field private o:Lorg/json/JSONArray;

.field private p:Landroid/widget/PopupWindow;

.field private q:Lcom/unionpay/mobile/android/upwidget/h;

.field private r:I

.field private s:I

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONArray;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/unionpay/mobile/android/upwidget/o;

.field private x:Landroid/widget/TextView;

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 14

    const/high16 v10, 0x41200000

    const/16 v9, 0xf

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/y;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/unionpay/mobile/android/widgets/aj;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/aj;-><init>(Lcom/unionpay/mobile/android/widgets/ai;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ak;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/ak;-><init>(Lcom/unionpay/mobile/android/widgets/ai;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/al;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/al;-><init>(Lcom/unionpay/mobile/android/widgets/ai;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->n:Landroid/widget/AdapterView$OnItemClickListener;

    iput v7, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->t:Lorg/json/JSONArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->u:Lorg/json/JSONArray;

    iput v7, p0, Lcom/unionpay/mobile/android/widgets/ai;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->m:Lorg/json/JSONObject;

    const-string v1, "items"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->o:Lorg/json/JSONArray;

    const-string v0, "label"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bg:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->y:Ljava/lang/String;

    :cond_49
    const-string v0, "default_item_idx"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "default_item_idx"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    :cond_61
    new-instance v0, Lcom/unionpay/mobile/android/upwidget/h;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->o:Lorg/json/JSONArray;

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    invoke-direct {v0, p1, v1, v2}, Lcom/unionpay/mobile/android/upwidget/h;-><init>(Landroid/content/Context;Lorg/json/JSONArray;I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/h;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/h;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/h;->d(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const v3, -0x342f27

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ai;->m:Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "promotion"

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/unionpay/mobile/android/widgets/am;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/widgets/am;-><init>(Lcom/unionpay/mobile/android/widgets/ai;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    const/high16 v3, 0x41700000

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v3, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    sget v3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    const v3, -0x99999a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "instalment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a4

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, -0x342f27

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ai;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a4
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ai;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(Z)V

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    invoke-direct {p0, v0, v7}, Lcom/unionpay/mobile/android/widgets/ai;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/ai;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->p:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private a(IILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v1, ""

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->o:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "coupon"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->t:Lorg/json/JSONArray;

    :goto_1c
    invoke-static {v0, p2}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    const-string v3, "point"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->u:Lorg/json/JSONArray;

    goto :goto_1c

    :cond_34
    const-string v2, "options"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_1c

    :cond_3b
    move-object v0, v1

    goto :goto_28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "type"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "label"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "checked"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ckb_style"

    const-string v2, "small"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "required"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_22} :catch_23

    :goto_22
    return-object v1

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22
.end method

.method private a(II)V
    .registers 11

    const/16 v2, 0x8

    const/4 v1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/ai;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->v:Landroid/widget/TextView;

    const-string v3, "label"

    invoke-direct {p0, p1, p2, v3}, Lcom/unionpay/mobile/android/widgets/ai;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    const-string v0, "rel_label"

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "rel_value"

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "rel_value_style"

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/widgets/ai;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/widgets/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {p0, v4}, Lcom/unionpay/mobile/android/widgets/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_39
    return-void

    :cond_3a
    invoke-static {v0}, Lcom/unionpay/mobile/android/data/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_57
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#ff"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v6, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ad

    move v0, v1

    :goto_92
    add-int/2addr v0, v3

    const/16 v4, 0x21

    invoke-virtual {v6, v7, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/o;->b()Z

    move-result v0

    :goto_a5
    if-eqz v0, :cond_b4

    :goto_a7
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_39

    :cond_ad
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_92

    :cond_b2
    const/4 v0, 0x1

    goto :goto_a5

    :cond_b4
    move v1, v2

    goto :goto_a7
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/ai;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/ai;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/ai;Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->p:Landroid/widget/PopupWindow;

    if-nez v0, :cond_21

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->p:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_21
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->p:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->r:I

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/ai;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/o;->b()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x0

    :cond_21
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ai;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/h;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/h;->b(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upwidget/o$a;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/o;->a(Lcom/unionpay/mobile/android/upwidget/o$a;)V

    :cond_9
    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .registers 3

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ai;->t:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/h;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ai;->u:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/upwidget/h;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/o;->a(Z)V

    :cond_b
    if-eqz p1, :cond_2d

    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move v0, v1

    goto :goto_e

    :cond_2f
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c
.end method

.method protected final a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/widgets/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return v5

    :cond_9
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->m:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->m:Lorg/json/JSONObject;

    const-string v3, "checked"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/unionpay/mobile/android/widgets/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/o;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/unionpay/mobile/android/upwidget/o;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/o;->a()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/upwidget/o;->a(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    const/high16 v3, 0x41200000

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/h;->e(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Z
    .registers 4

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    const/high16 v2, 0x41200000

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->c:Landroid/content/Context;

    const/high16 v2, 0x40a00000

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/ai;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->q:Lcom/unionpay/mobile/android/upwidget/h;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/h;->c(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .registers 4

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->s:I

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/ai;->r:I

    const-string v2, "available"

    invoke-direct {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/ai;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ai;->w:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/o;->b()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method
