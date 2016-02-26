.class public Lcom/duoku/platform/DkPlatformSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/DkPlatformSettings$GameCategory;
    }
.end annotation


# static fields
.field public static SCREEN_ORIENTATION_LANDSCAPE:I

.field public static SCREEN_ORIENTATION_PORTRAIT:I


# instance fields
.field private mAppid:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mGameCategory:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

.field private mOrient:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/DkPlatformSettings;->SCREEN_ORIENTATION_LANDSCAPE:I

    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/duoku/platform/DkPlatformSettings;->SCREEN_ORIENTATION_PORTRAIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget v0, Lcom/duoku/platform/DkPlatformSettings;->SCREEN_ORIENTATION_PORTRAIT:I

    iput v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mOrient:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/duoku/platform/DkPlatformSettings$GameCategory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget v0, Lcom/duoku/platform/DkPlatformSettings;->SCREEN_ORIENTATION_PORTRAIT:I

    iput v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mOrient:I

    .line 30
    iput-object p1, p0, Lcom/duoku/platform/DkPlatformSettings;->mGameCategory:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    .line 31
    iput-object p2, p0, Lcom/duoku/platform/DkPlatformSettings;->mAppid:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/duoku/platform/DkPlatformSettings;->mAppkey:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getGameCategory()Lcom/duoku/platform/DkPlatformSettings$GameCategory;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mGameCategory:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    return-object v0
.end method

.method public getOrient()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mOrient:I

    return v0
.end method

.method public getmVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/duoku/platform/DkPlatformSettings;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/duoku/platform/DkPlatformSettings;->mAppid:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/duoku/platform/DkPlatformSettings;->mAppkey:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setGameCategory(Lcom/duoku/platform/DkPlatformSettings$GameCategory;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/duoku/platform/DkPlatformSettings;->mGameCategory:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    .line 65
    return-void
.end method

.method public setOrient(I)V
    .registers 2

    .prologue
    .line 94
    iput p1, p0, Lcom/duoku/platform/DkPlatformSettings;->mOrient:I

    .line 95
    return-void
.end method

.method public setmVersionName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/duoku/platform/DkPlatformSettings;->mVersionName:Ljava/lang/String;

    .line 112
    return-void
.end method
