.class public abstract Lcom/adobe/air/wand/message/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/message/Message$Data;,
        Lcom/adobe/air/wand/message/Message$Header;,
        Lcom/adobe/air/wand/message/Message$Type;
    }
.end annotation


# instance fields
.field protected final mData:Lcom/adobe/air/wand/message/Message$Data;

.field protected final mHeader:Lcom/adobe/air/wand/message/Message$Header;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/message/Message$Header;Lcom/adobe/air/wand/message/Message$Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/wand/message/Message;->mHeader:Lcom/adobe/air/wand/message/Message$Header;

    iput-object p2, p0, Lcom/adobe/air/wand/message/Message;->mData:Lcom/adobe/air/wand/message/Message$Data;

    return-void
.end method


# virtual methods
.method public getData()Lcom/adobe/air/wand/message/Message$Data;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/message/Message;->mData:Lcom/adobe/air/wand/message/Message$Data;

    return-object v0
.end method

.method public getHeader()Lcom/adobe/air/wand/message/Message$Header;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/message/Message;->mHeader:Lcom/adobe/air/wand/message/Message$Header;

    return-object v0
.end method
