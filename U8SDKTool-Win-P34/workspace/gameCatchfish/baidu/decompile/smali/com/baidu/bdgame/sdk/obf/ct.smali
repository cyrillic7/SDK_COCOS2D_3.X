.class public Lcom/baidu/bdgame/sdk/obf/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ct$a;,
        Lcom/baidu/bdgame/sdk/obf/ct$b;,
        Lcom/baidu/bdgame/sdk/obf/ct$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/ListView;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/bdgame/sdk/obf/ct$c;

.field private h:Lcom/baidu/bdgame/sdk/obf/ic;

.field private i:J

.field private j:J

.field private k:Z

.field private l:Lcom/baidu/bdgame/sdk/obf/ct$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 6

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    .line 56
    iput-wide p2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->j:J

    .line 57
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->i()V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/widget/PopupWindow;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ic;)Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    return-object p1
.end method

.method private a(Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/ic;"
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 188
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/bdgame/sdk/obf/ct;->i:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_39

    .line 189
    if-nez v1, :cond_25

    :cond_23
    :goto_23
    move-object v1, v0

    .line 194
    goto :goto_7

    .line 192
    :cond_25
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_23

    :cond_39
    move-object v0, v1

    goto :goto_23

    .line 199
    :cond_3b
    return-object v1
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/ct$a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->l:Lcom/baidu/bdgame/sdk/obf/ct$a;

    return-object v0
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 230
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ct;)Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ct;)Ljava/util/List;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->j()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ct;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    return-object v0
.end method

.method private f()Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 169
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 180
    :cond_1d
    :goto_1d
    return-object v0

    .line 173
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Ljava/util/List;)Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    .line 174
    if-nez v0, :cond_1d

    .line 175
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->g()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    goto :goto_1d

    .line 180
    :cond_2b
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private g()Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 9

    .prologue
    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 205
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ic;

    .line 206
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_33

    :goto_30
    move-object v1, v0

    .line 208
    goto :goto_10

    .line 211
    :cond_32
    return-object v1

    :cond_33
    move-object v0, v1

    goto :goto_30
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 237
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->k:Z

    if-nez v0, :cond_42

    .line 238
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    .line 239
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 240
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 241
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v3, "bdp_account_tip_btn_bottom"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ct$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ct$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 252
    iput-boolean v4, p0, Lcom/baidu/bdgame/sdk/obf/ct;->k:Z

    .line 254
    :cond_42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 255
    return-void
.end method

.method private i()V
    .registers 5

    .prologue
    .line 260
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    .line 261
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v3, "bdp_horizontal_line"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_coupon_bg1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_coupon_bg2"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ct$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/ct$3;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 282
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ct$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ct$c;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ct$1;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->g:Lcom/baidu/bdgame/sdk/obf/ct$c;

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->g:Lcom/baidu/bdgame/sdk/obf/ct$c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    return-void
.end method

.method private j()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    .line 290
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->a()Lcom/baidu/bdgame/sdk/obf/ic$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ic$a;->b:Lcom/baidu/bdgame/sdk/obf/ic$a;

    if-ne v0, v1, :cond_6d

    .line 291
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_use_balance_voucher"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_28
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v3, "bdp_paycenter_voucher_expire"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ic;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v4, "bdp_color_666666"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v1, v3, v0, v4}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/widget/TextView;Ljava/lang/String;III)V

    .line 307
    :goto_6c
    return-void

    .line 293
    :cond_6d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/content/Context;

    const-string v2, "bdp_paycenter_use_voucher"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 305
    :cond_8a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6c
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 110
    :cond_c
    :goto_c
    return-void

    .line 107
    :cond_d
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->h()V

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/ic;)V

    goto :goto_c
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 122
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ct$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Landroid/view/View;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_16
    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 6

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/View;

    .line 63
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Landroid/widget/TextView;

    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->j()V

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 68
    :cond_15
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ct$a;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->l:Lcom/baidu/bdgame/sdk/obf/ct$a;

    .line 379
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    .line 219
    return-void
.end method

.method public a(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ic;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 93
    :cond_8
    :goto_8
    return-void

    .line 85
    :cond_9
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Ljava/util/List;

    .line 87
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->g()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->j:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_22

    .line 88
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->j:J

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->i:J

    goto :goto_8

    .line 90
    :cond_22
    iput-wide p2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->i:J

    goto :goto_8
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 116
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 136
    return-void
.end method

.method public d()Lcom/baidu/bdgame/sdk/obf/ic;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    if-nez v0, :cond_a

    .line 149
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->f()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->h:Lcom/baidu/bdgame/sdk/obf/ic;

    return-object v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->g()Lcom/baidu/bdgame/sdk/obf/ic;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/ic;)V

    .line 224
    return-void
.end method
