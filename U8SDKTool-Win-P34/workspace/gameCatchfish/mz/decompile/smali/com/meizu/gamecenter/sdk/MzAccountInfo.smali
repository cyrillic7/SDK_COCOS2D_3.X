.class public Lcom/meizu/gamecenter/sdk/MzAccountInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mName:Ljava/lang/String;

.field private mSession:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->mName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->mUid:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->mSession:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->mSession:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method
