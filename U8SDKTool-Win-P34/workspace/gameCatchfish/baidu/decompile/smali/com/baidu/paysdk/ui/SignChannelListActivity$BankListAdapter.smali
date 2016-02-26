.class Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/SignChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BankListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBankList:Ljava/util/List;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d4

    :cond_a
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bd_wallet_sign_bank_info"

    invoke-static {v1, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;Lcom/baidu/paysdk/ui/SignChannelListActivity$1;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "bank_item_title_layout"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    # setter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$402(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "item_title"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->groupTitle:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$502(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "bank_logo"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/NetImageView;

    # setter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->banklogo:Lcom/baidu/wallet/base/widget/NetImageView;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$602(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Lcom/baidu/wallet/base/widget/NetImageView;)Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "bank_name"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankname:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$702(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity;->mAct:Landroid/app/Activity;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$200(Lcom/baidu/paysdk/ui/SignChannelListActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "bank_item_layout"

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    # setter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankItemLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$802(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_8d
    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankItemLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$800(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$1;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->getPositionForSection(I)I

    move-result v0

    if-ne p1, v0, :cond_dc

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$400(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_aa
    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->banklogo:Lcom/baidu/wallet/base/widget/NetImageView;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$600(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/wallet/base/widget/NetImageView;->setVisibility(I)V

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->banklogo:Lcom/baidu/wallet/base/widget/NetImageView;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$600(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Lcom/baidu/wallet/base/widget/NetImageView;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/SignBank;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/SignBank;->bank_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->bankname:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$700(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter;->mBankList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/datamodel/SignBank;

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/SignBank;->bank_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_d4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_8d

    :cond_dc
    # getter for: Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->title_layout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;->access$400(Lcom/baidu/paysdk/ui/SignChannelListActivity$BankListAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_aa
.end method
