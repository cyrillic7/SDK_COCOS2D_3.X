.class public final enum Lcom/baidu/wallet/api/Constants$InterfaceId;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/api/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterfaceId"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum accessMyBankInfo:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum accessSecurityCenter:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum accessTransRecords:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum accessWalletBalance:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum accessWalletService:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum doPay:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum doWalletPhoneCharge:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum doWalletSuperTransfer:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum getWalletServiceList:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum init:Lcom/baidu/wallet/api/Constants$InterfaceId;

.field public static final enum initWallet:Lcom/baidu/wallet/api/Constants$InterfaceId;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "init"

    invoke-direct {v0, v1, v3}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->init:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "initWallet"

    invoke-direct {v0, v1, v4}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->initWallet:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "doPay"

    invoke-direct {v0, v1, v5}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->doPay:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "doWalletPhoneCharge"

    invoke-direct {v0, v1, v6}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->doWalletPhoneCharge:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "doWalletSuperTransfer"

    invoke-direct {v0, v1, v7}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->doWalletSuperTransfer:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "accessMyBankInfo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessMyBankInfo:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "accessWalletBalance"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessWalletBalance:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "accessSecurityCenter"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessSecurityCenter:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "accessWalletService"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessWalletService:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "getWalletServiceList"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->getWalletServiceList:Lcom/baidu/wallet/api/Constants$InterfaceId;

    new-instance v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    const-string v1, "accessTransRecords"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/baidu/wallet/api/Constants$InterfaceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessTransRecords:Lcom/baidu/wallet/api/Constants$InterfaceId;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/baidu/wallet/api/Constants$InterfaceId;

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->init:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->initWallet:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->doPay:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->doWalletPhoneCharge:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/wallet/api/Constants$InterfaceId;->doWalletSuperTransfer:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessMyBankInfo:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessWalletBalance:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessSecurityCenter:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessWalletService:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/wallet/api/Constants$InterfaceId;->getWalletServiceList:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/baidu/wallet/api/Constants$InterfaceId;->accessTransRecords:Lcom/baidu/wallet/api/Constants$InterfaceId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->$VALUES:[Lcom/baidu/wallet/api/Constants$InterfaceId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/wallet/api/Constants$InterfaceId;
    .registers 2

    const-class v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/api/Constants$InterfaceId;

    return-object v0
.end method

.method public static values()[Lcom/baidu/wallet/api/Constants$InterfaceId;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/api/Constants$InterfaceId;->$VALUES:[Lcom/baidu/wallet/api/Constants$InterfaceId;

    invoke-virtual {v0}, [Lcom/baidu/wallet/api/Constants$InterfaceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/api/Constants$InterfaceId;

    return-object v0
.end method
