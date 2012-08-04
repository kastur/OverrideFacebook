.class public Lcom/facebook/orca/server/FetchThreadParams;
.super Ljava/lang/Object;
.source "FetchThreadParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/FetchThreadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/server/ThreadCriteria;

.field private final b:Lcom/facebook/orca/server/DataFreshnessParam;

.field private final c:Z

.field private final d:J

.field private final e:I

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParams$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParams$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/FetchThreadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/facebook/orca/server/ThreadCriteria;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ThreadCriteria;

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->a:Lcom/facebook/orca/server/ThreadCriteria;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/DataFreshnessParam;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->c:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->d:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->e:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->f:J

    .line 35
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/FetchThreadParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/server/FetchThreadParamsBuilder;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->a:Lcom/facebook/orca/server/ThreadCriteria;

    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->c:Z

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->d:J

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->e:I

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->f:J

    .line 26
    return-void
.end method

.method public static newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/server/ThreadCriteria;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->a:Lcom/facebook/orca/server/ThreadCriteria;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->c:Z

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->d:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->e:I

    return v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->f:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->a:Lcom/facebook/orca/server/ThreadCriteria;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->b:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0}, Lcom/facebook/orca/server/DataFreshnessParam;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParams;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
