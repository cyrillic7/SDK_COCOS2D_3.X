.class public final enum Lcom/baidu/platformsdk/BDPlatformUser$UserType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/BDPlatformUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/platformsdk/BDPlatformUser$UserType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

.field public static final enum Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

.field public static final enum Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

.field public static final enum _91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

.field private static final synthetic a:[Lcom/baidu/platformsdk/BDPlatformUser$UserType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/baidu/platformsdk/BDPlatformUser$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 22
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    const-string v1, "Baidu"

    invoke-direct {v0, v1, v3}, Lcom/baidu/platformsdk/BDPlatformUser$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 23
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    const-string v1, "Duoku"

    invoke-direct {v0, v1, v4}, Lcom/baidu/platformsdk/BDPlatformUser$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 24
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    const-string v1, "_91"

    invoke-direct {v0, v1, v5}, Lcom/baidu/platformsdk/BDPlatformUser$UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Unknown:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->a:[Lcom/baidu/platformsdk/BDPlatformUser$UserType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platformsdk/BDPlatformUser$UserType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/platformsdk/BDPlatformUser$UserType;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->a:[Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    invoke-virtual {v0}, [Lcom/baidu/platformsdk/BDPlatformUser$UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    return-object v0
.end method
