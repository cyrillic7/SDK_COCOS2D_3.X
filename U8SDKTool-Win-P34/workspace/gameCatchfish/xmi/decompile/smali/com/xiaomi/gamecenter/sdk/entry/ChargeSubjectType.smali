.class public final enum Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

.field public static final enum CHARGE_AND_PAY:Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

.field public static final enum CHARGE_ONLY:Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    const-string v1, "CHARGE_AND_PAY"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->CHARGE_AND_PAY:Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    const-string v1, "CHARGE_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->CHARGE_ONLY:Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->CHARGE_AND_PAY:Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->CHARGE_ONLY:Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;
    .registers 2

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;
    .registers 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/entry/ChargeSubjectType;

    return-object v0
.end method
