.class public final Lcom/unionpay/mobile/android/widgets/p;
.super Lcom/unionpay/mobile/android/widgets/y;


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Lorg/json/JSONArray;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/PopupWindow;

.field private q:Lcom/unionpay/mobile/android/upwidget/c;

.field private r:Lcom/unionpay/mobile/android/upwidget/e;

.field private s:I

.field private t:Landroid/widget/TextView;

.field private u:Lcom/unionpay/mobile/android/upwidget/o;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 15

    const/16 v11, 0xf

    const/4 v7, 0x0

    const/high16 v10, 0x41200000

    const/4 v9, 0x1

    const/4 v8, -0x1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/y;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/unionpay/mobile/android/widgets/q;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/q;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/r;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/r;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->b:Landroid/widget/AdapterView$OnItemClickListener;

    iput v9, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Lorg/json/JSONObject;

    const-string v1, "options"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONArray;

    const-string v0, "label"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->by:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bg:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    :cond_3a
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONArray;

    const/4 v0, 0x0

    if-eqz v2, :cond_7a

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7a

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v7

    :goto_4f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_79

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "text1"

    const-string v5, "label"

    invoke-direct {p0, v0, v5}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "text2"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "editable"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_79
    move-object v0, v1

    :cond_7a
    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->o:Ljava/util/List;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->o:Ljava/util/List;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    iget v6, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Lcom/unionpay/mobile/android/upwidget/c;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-direct {v0, v1, v2}, Lcom/unionpay/mobile/android/upwidget/e;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upwidget/c;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/e;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/e;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const v3, -0x342f27

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "instalment"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v5, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_e6
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/unionpay/mobile/android/widgets/s;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/widgets/s;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    const/high16 v3, 0x41700000

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v3, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    sget v3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    const v3, -0x99999a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "instalment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d9

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, -0x342f27

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d9
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/p;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/p;->a(Z)V

    invoke-direct {p0, v9}, Lcom/unionpay/mobile/android/widgets/p;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/p;)Landroid/widget/PopupWindow;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v1, ""

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, p2}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "type"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "label"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "checked"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ckb_style"

    const-string v2, "small"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "required"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "instalment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4a

    const-string v2, "href_label"

    const-string v3, "label"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "href_url"

    const-string v3, "href"

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    return-object v1

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4a
.end method

.method private a(I)V
    .registers 9

    const/4 v1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Lcom/unionpay/mobile/android/upwidget/c;

    iget v3, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    const-string v3, "label"

    invoke-direct {p0, v0, v3}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    const-string v2, "rel_label"

    invoke-direct {p0, v0, v2}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rel_value"

    invoke-direct {p0, v0, v3}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rel_value_style"

    invoke-direct {p0, v0, v4}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    :goto_3f
    return-void

    :cond_40
    invoke-static {v0}, Lcom/unionpay/mobile/android/data/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#ff"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v1

    :goto_98
    add-int/2addr v0, v2

    const/16 v3, 0x21

    invoke-virtual {v5, v6, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/o;->b()Z

    move-result v0

    :goto_ab
    if-eqz v0, :cond_ba

    :goto_ad
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f

    :cond_b3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_98

    :cond_b8
    const/4 v0, 0x1

    goto :goto_ab

    :cond_ba
    const/16 v1, 0x8

    goto :goto_ad
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/p;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/p;Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/widget/PopupWindow;

    if-nez v0, :cond_21

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_21
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/widget/PopupWindow;

    const/16 v1, 0x50

    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "value"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/o;->b()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v0, 0x0

    :cond_1c
    const-string v1, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/p;->m()Ljava/lang/String;

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

.method public final a(Lcom/unionpay/mobile/android/upwidget/o$a;)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/o;->a(Lcom/unionpay/mobile/android/upwidget/o$a;)V

    return-void
.end method

.method public final a(Z)V
    .registers 5

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/o;->a(Z)V

    if-eqz p1, :cond_29

    const/4 v0, 0x0

    :goto_a
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    move v0, v1

    goto :goto_a

    :cond_2b
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method

.method protected final a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z
    .registers 11

    const/high16 v7, 0x41200000

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return v6

    :cond_b
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "instalment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const v3, -0x342f27

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_56
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Lorg/json/JSONObject;

    const-string v3, "checked"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p2, v2}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/o;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/unionpay/mobile/android/upwidget/o;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/o;->a()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/upwidget/o;->a(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a
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

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    const/high16 v2, 0x41200000

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Landroid/content/Context;

    const/high16 v2, 0x40a00000

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/d;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .registers 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "available"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/o;->b()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method
