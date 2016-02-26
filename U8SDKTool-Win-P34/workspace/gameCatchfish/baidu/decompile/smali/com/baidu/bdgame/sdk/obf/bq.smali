.class public Lcom/baidu/bdgame/sdk/obf/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/bq$b;,
        Lcom/baidu/bdgame/sdk/obf/bq$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 33
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 117
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 72
    :try_start_0
    sput-object p3, Lcom/baidu/bdgame/sdk/obf/bq;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 87
    :goto_2
    return-void

    .line 84
    :catch_3
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 122
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 123
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bq;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/duoku/game/DKGameSDK;->onResume(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 128
    :cond_d
    :goto_d
    return-void

    .line 125
    :catch_e
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;I)V
    .registers 2

    .prologue
    .line 109
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 133
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 134
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/bq;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/duoku/game/DKGameSDK;->onPause(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 139
    :cond_d
    :goto_d
    return-void

    .line 136
    :catch_e
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
