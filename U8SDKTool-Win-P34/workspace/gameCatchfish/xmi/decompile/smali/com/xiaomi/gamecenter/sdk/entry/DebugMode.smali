.class public final enum Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

.field public static final enum ONLINE:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

.field public static final enum SANDBOX:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->ONLINE:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    const-string v1, "SANDBOX"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->SANDBOX:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->ONLINE:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->SANDBOX:Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;
    .registers 2

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;
    .registers 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/entry/DebugMode;

    return-object v0
.end method
