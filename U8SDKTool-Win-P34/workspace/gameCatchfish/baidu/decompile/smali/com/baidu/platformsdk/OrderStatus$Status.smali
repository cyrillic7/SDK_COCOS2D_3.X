.class public final enum Lcom/baidu/platformsdk/OrderStatus$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/OrderStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/platformsdk/OrderStatus$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Fail:Lcom/baidu/platformsdk/OrderStatus$Status;

.field public static final enum Submit:Lcom/baidu/platformsdk/OrderStatus$Status;

.field public static final enum Success:Lcom/baidu/platformsdk/OrderStatus$Status;

.field public static final enum Unknown:Lcom/baidu/platformsdk/OrderStatus$Status;

.field private static final synthetic a:[Lcom/baidu/platformsdk/OrderStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/baidu/platformsdk/OrderStatus$Status;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/baidu/platformsdk/OrderStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Unknown:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 20
    new-instance v0, Lcom/baidu/platformsdk/OrderStatus$Status;

    const-string v1, "Submit"

    invoke-direct {v0, v1, v3}, Lcom/baidu/platformsdk/OrderStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Submit:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 21
    new-instance v0, Lcom/baidu/platformsdk/OrderStatus$Status;

    const-string v1, "Success"

    invoke-direct {v0, v1, v4}, Lcom/baidu/platformsdk/OrderStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Success:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 22
    new-instance v0, Lcom/baidu/platformsdk/OrderStatus$Status;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v5}, Lcom/baidu/platformsdk/OrderStatus$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->Fail:Lcom/baidu/platformsdk/OrderStatus$Status;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/platformsdk/OrderStatus$Status;

    sget-object v1, Lcom/baidu/platformsdk/OrderStatus$Status;->Unknown:Lcom/baidu/platformsdk/OrderStatus$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/platformsdk/OrderStatus$Status;->Submit:Lcom/baidu/platformsdk/OrderStatus$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/platformsdk/OrderStatus$Status;->Success:Lcom/baidu/platformsdk/OrderStatus$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/platformsdk/OrderStatus$Status;->Fail:Lcom/baidu/platformsdk/OrderStatus$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->a:[Lcom/baidu/platformsdk/OrderStatus$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platformsdk/OrderStatus$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/baidu/platformsdk/OrderStatus$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/OrderStatus$Status;

    return-object v0
.end method

.method public static values()[Lcom/baidu/platformsdk/OrderStatus$Status;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/baidu/platformsdk/OrderStatus$Status;->a:[Lcom/baidu/platformsdk/OrderStatus$Status;

    invoke-virtual {v0}, [Lcom/baidu/platformsdk/OrderStatus$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platformsdk/OrderStatus$Status;

    return-object v0
.end method
