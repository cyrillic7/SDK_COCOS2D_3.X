.class public Lcom/baidu/wallet/base/widget/BdActionBar;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final TEXT_ALIGN_CENTER:I = 0x1

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_RIGHT:I = 0x2


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->a()V

    return-void
.end method

.method private a()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wallet_base_action_bar"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title_back"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "title_text_center"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "btn_Login_or_reg"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "titlebar_right_imgzone2_img"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "titlebar_right_imgzone2"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "titlebar_right_imgzone2_notify"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleColor(I)V

    return-void
.end method


# virtual methods
.method public getRightImgZone2NotifyVisibility()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getRightZoneView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    return-object v0
.end method

.method public hideLeftZone()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public isLeftZoneImageSelected()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setImgZoneBackgroundResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setLeftZoneImageSelected(Z)V
    .registers 2

    return-void
.end method

.method public setLeftZoneImageSrc(I)V
    .registers 4

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    iget-object v1, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightImgZone2Enable(Z)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setRightImgZone2NotifyText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->setRightImgZone2NotifyVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->invalidate()V

    return-void
.end method

.method public setRightImgZone2NotifyVisibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setRightImgZone2OnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightImgZone2Src(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightImgZone2Visibility(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->invalidate()V

    return-void
.end method

.method public setRightLogoutOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->isOwnLogin()Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->f:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/baidu/wallet/base/widget/BdActionBar;->invalidate()V

    return-void

    :cond_10
    iget v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->f:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public setTitleAlignment(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->f:I

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitleColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleShadowLayer(FFFI)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/BdActionBar;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method
