.class synthetic Lcom/baidu/bdgame/sdk/obf/c$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->values()[Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/c$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/c$1;->a:[I

    sget-object v1, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    invoke-virtual {v1}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
