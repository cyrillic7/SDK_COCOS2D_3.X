.class public final enum Lcom/baidu/bdgame/sdk/obf/lr$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/lr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/lr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/bdgame/sdk/obf/lr$b;

.field public static final enum b:Lcom/baidu/bdgame/sdk/obf/lr$b;

.field public static final enum c:Lcom/baidu/bdgame/sdk/obf/lr$b;

.field public static final enum d:Lcom/baidu/bdgame/sdk/obf/lr$b;

.field private static final synthetic e:[Lcom/baidu/bdgame/sdk/obf/lr$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lr$b;

    const-string v1, "Top"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/lr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/lr$b;->a:Lcom/baidu/bdgame/sdk/obf/lr$b;

    .line 24
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lr$b;

    const-string v1, "Middle"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/lr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/lr$b;->b:Lcom/baidu/bdgame/sdk/obf/lr$b;

    .line 25
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lr$b;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/lr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/lr$b;->c:Lcom/baidu/bdgame/sdk/obf/lr$b;

    .line 26
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/lr$b;

    const-string v1, "Single"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bdgame/sdk/obf/lr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/lr$b;->d:Lcom/baidu/bdgame/sdk/obf/lr$b;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/bdgame/sdk/obf/lr$b;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/lr$b;->a:Lcom/baidu/bdgame/sdk/obf/lr$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/lr$b;->b:Lcom/baidu/bdgame/sdk/obf/lr$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/lr$b;->c:Lcom/baidu/bdgame/sdk/obf/lr$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/lr$b;->d:Lcom/baidu/bdgame/sdk/obf/lr$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/lr$b;->e:[Lcom/baidu/bdgame/sdk/obf/lr$b;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/lr$b;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/baidu/bdgame/sdk/obf/lr$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/lr$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bdgame/sdk/obf/lr$b;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/lr$b;->e:[Lcom/baidu/bdgame/sdk/obf/lr$b;

    invoke-virtual {v0}, [Lcom/baidu/bdgame/sdk/obf/lr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bdgame/sdk/obf/lr$b;

    return-object v0
.end method
