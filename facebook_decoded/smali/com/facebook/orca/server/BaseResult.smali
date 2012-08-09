.class public Lcom/facebook/orca/server/BaseResult;
.super Ljava/lang/Object;
.source "BaseResult.java"


# instance fields
.field private final a:Lcom/facebook/orca/server/DataFreshnessResult;

.field private final b:J


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DataFreshnessResult;

    iput-object v0, p0, Lcom/facebook/orca/server/BaseResult;->a:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    .line 23
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/orca/server/DataFreshnessResult;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/server/BaseResult;->a:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 17
    iput-wide p2, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/server/DataFreshnessResult;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/server/BaseResult;->a:Lcom/facebook/orca/server/DataFreshnessResult;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/server/BaseResult;->a()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 35
    iget-wide v0, p0, Lcom/facebook/orca/server/BaseResult;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    return-void
.end method
