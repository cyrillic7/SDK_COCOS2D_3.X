.class Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/SelectBindCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;Landroid/content/Context;Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;-><init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isDebitCard:Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$500(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondDebits()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebitNum:I
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$600(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    array-length v0, v0

    goto :goto_18

    :cond_29
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getItem(I)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->isDebitCard:Z
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$500(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/baidu/paysdk/storage/PayDataCache;->getInstance()Lcom/baidu/paysdk/storage/PayDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/storage/PayDataCache;->hasBondDebits()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mDebit:[I
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$800(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[I

    move-result-object v1

    aget v1, v1, p1

    aget-object v0, v0, v1

    :goto_22
    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_3d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mBondCardInfo:[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$700(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)[Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_22

    :cond_3d
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->getItem(I)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->getItem(I)Lcom/baidu/wallet/base/datamodel/CardData$BondCard;

    move-result-object v2

    if-eqz v2, :cond_116

    if-nez p2, :cond_e1

    new-instance v1, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;

    invoke-direct {v1, v5}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;-><init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-virtual {v3}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ebpay_list_item_bond_card_select"

    invoke-static {v3, v4}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "tv_bank_name"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankName:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->access$1002(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "tv_card_no"

    invoke-static {v0, v3}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankNO:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->access$1102(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_4e
    iget v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e9

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->access$1000(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-virtual {v4}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "wallet_base_mode_debit"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_79
    :goto_79
    iget-object v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    iget-object v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_b2

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankNO:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->access$1100(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   ****"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    iget-object v4, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->account_no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_e0
    return-object p2

    :cond_e1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;

    goto/16 :goto_4e

    :cond_e9
    iget v1, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->card_type:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_79

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->bankName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;->access$1000(Lcom/baidu/paysdk/ui/SelectBindCardActivity$Holder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/baidu/wallet/base/datamodel/CardData$BondCard;->bank_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-virtual {v4}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "wallet_base_mode_credit"

    invoke-static {v4, v5}, Lcom/baidu/wallet/core/utils/ResUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_79

    :cond_116
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_e0
.end method
