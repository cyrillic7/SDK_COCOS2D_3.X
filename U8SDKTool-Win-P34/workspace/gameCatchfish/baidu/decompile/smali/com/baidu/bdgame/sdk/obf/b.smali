.class public final Lcom/baidu/bdgame/sdk/obf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "BDGameSDK"

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/baidu/bdgame/sdk/obf/b;->b:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/baidu/bdgame/sdk/obf/b;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
