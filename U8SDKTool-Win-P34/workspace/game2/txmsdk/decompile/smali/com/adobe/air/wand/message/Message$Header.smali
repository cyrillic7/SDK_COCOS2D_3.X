.class public abstract Lcom/adobe/air/wand/message/Message$Header;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Header"
.end annotation


# instance fields
.field protected mTimestamp:J

.field protected mTitle:Ljava/lang/String;

.field protected mType:Lcom/adobe/air/wand/message/Message$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/air/wand/message/Message$Type;J)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/message/Message$Header;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/air/wand/message/Message$Header;->mType:Lcom/adobe/air/wand/message/Message$Type;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/wand/message/Message$Header;->mTimestamp:J

    iput-object p1, p0, Lcom/adobe/air/wand/message/Message$Header;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/air/wand/message/Message$Header;->mType:Lcom/adobe/air/wand/message/Message$Type;

    iput-wide p3, p0, Lcom/adobe/air/wand/message/Message$Header;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/air/wand/message/Message$Header;->mTimestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/message/Message$Header;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/adobe/air/wand/message/Message$Type;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/message/Message$Header;->mType:Lcom/adobe/air/wand/message/Message$Type;

    return-object v0
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/adobe/air/wand/message/Message$Header;->mTimestamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/message/Message$Header;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/adobe/air/wand/message/Message$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/message/Message$Header;->mType:Lcom/adobe/air/wand/message/Message$Type;

    return-void
.end method
