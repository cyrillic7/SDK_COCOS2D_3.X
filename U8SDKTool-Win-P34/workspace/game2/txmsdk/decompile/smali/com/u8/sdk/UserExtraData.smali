.class public Lcom/u8/sdk/UserExtraData;
.super Ljava/lang/Object;
.source "UserExtraData.java"


# static fields
.field public static final TYPE_CREATE_ROLE:I = 0x2

.field public static final TYPE_ENTER_GAME:I = 0x3

.field public static final TYPE_EXIT_GAME:I = 0x5

.field public static final TYPE_LEVEL_UP:I = 0x4

.field public static final TYPE_SELECT_SERVER:I = 0x1


# instance fields
.field private dataType:I

.field private moneyNum:I

.field private roleID:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverID:I

.field private serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->dataType:I

    return v0
.end method

.method public getMoneyNum()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->moneyNum:I

    return v0
.end method

.method public getRoleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->roleID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()I
    .locals 1

    iget v0, p0, Lcom/u8/sdk/UserExtraData;->serverID:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/UserExtraData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->dataType:I

    return-void
.end method

.method public setMoneyNum(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->moneyNum:I

    return-void
.end method

.method public setRoleID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->roleID:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->roleLevel:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setServerID(I)V
    .locals 0

    iput p1, p0, Lcom/u8/sdk/UserExtraData;->serverID:I

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/UserExtraData;->serverName:Ljava/lang/String;

    return-void
.end method
