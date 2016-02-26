.class public final enum Lcom/baidu/platformsdk/BDPlatformSetting$Domain;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/BDPlatformSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/platformsdk/BDPlatformSetting$Domain;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

.field public static final enum DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

.field private static final synthetic a:[Lcom/baidu/platformsdk/BDPlatformSetting$Domain;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    const-string v1, "DOMAIN_ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 18
    new-instance v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    const-string v1, "DOMAIN_DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_ONLINE:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->a:[Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/platformsdk/BDPlatformSetting$Domain;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    return-object v0
.end method

.method public static values()[Lcom/baidu/platformsdk/BDPlatformSetting$Domain;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->a:[Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    invoke-virtual {v0}, [Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    return-object v0
.end method
