.class public final enum Lcom/tencent/msdk/remote/api/RemoteApiWhat;
.super Ljava/lang/Enum;
.source "RemoteApiWhat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/remote/api/RemoteApiWhat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

.field public static final enum QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryWXMyInfo"

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 5
    new-instance v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    const-string v1, "QueryQQMyInfo"

    invoke-direct {v0, v1, v3}, Lcom/tencent/msdk/remote/api/RemoteApiWhat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryWXMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->QueryQQMyInfo:Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->$VALUES:[Lcom/tencent/msdk/remote/api/RemoteApiWhat;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/remote/api/RemoteApiWhat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/remote/api/RemoteApiWhat;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/remote/api/RemoteApiWhat;->$VALUES:[Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    invoke-virtual {v0}, [Lcom/tencent/msdk/remote/api/RemoteApiWhat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/remote/api/RemoteApiWhat;

    return-object v0
.end method
