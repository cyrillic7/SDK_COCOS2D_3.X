.class public abstract Lcom/tencent/msdk/db/BaseUserInfo;
.super Ljava/lang/Object;
.source "BaseUserInfo.java"


# instance fields
.field public access_token:Ljava/lang/String;

.field public access_token_expire:J

.field public age:I

.field public avatar:Ljava/lang/String;

.field public create_at:J

.field public gender:I

.field public is_active:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public open_id:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pf_key:Ljava/lang/String;

.field public update_at:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token:Ljava/lang/String;

    .line 10
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token_expire:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf_key:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->is_active:Ljava/lang/String;

    .line 18
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->create_at:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->update_at:J

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->nickname:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->age:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->avatar:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->gender:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token:Ljava/lang/String;

    .line 10
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token_expire:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf_key:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->is_active:Ljava/lang/String;

    .line 18
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->create_at:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->update_at:J

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->nickname:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->age:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->avatar:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->gender:I

    .line 29
    iput-object p1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "actExpire"    # I
    .param p4, "pf"    # Ljava/lang/String;
    .param p5, "pfKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token:Ljava/lang/String;

    .line 10
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token_expire:J

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf_key:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->is_active:Ljava/lang/String;

    .line 18
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->create_at:J

    .line 19
    iput-wide v2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->update_at:J

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->nickname:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->age:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->avatar:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->gender:I

    .line 33
    iput-object p1, p0, Lcom/tencent/msdk/db/BaseUserInfo;->open_id:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token:Ljava/lang/String;

    .line 35
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/tencent/msdk/db/BaseUserInfo;->access_token_expire:J

    .line 36
    iput-object p4, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/tencent/msdk/db/BaseUserInfo;->pf_key:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract convertToLoginRet()Lcom/tencent/msdk/api/LoginRet;
.end method

.method protected getIntByName(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected getLongByName(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStringByName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
