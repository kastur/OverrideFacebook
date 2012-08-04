.class public Lcom/facebook/orca/server/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/server/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Lcom/facebook/orca/server/OperationResult;


# instance fields
.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Bundle;

.field private final e:Lcom/facebook/orca/server/ErrorCode;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/orca/server/OperationResult;

    invoke-direct {v0}, Lcom/facebook/orca/server/OperationResult;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/OperationResult;->a:Lcom/facebook/orca/server/OperationResult;

    .line 218
    new-instance v0, Lcom/facebook/orca/server/OperationResult$1;

    invoke-direct {v0}, Lcom/facebook/orca/server/OperationResult$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/server/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/OperationResult;->b:Z

    .line 25
    iput-object v1, p0, Lcom/facebook/orca/server/OperationResult;->c:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    .line 27
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->NO_ERROR:Lcom/facebook/orca/server/ErrorCode;

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->e:Lcom/facebook/orca/server/ErrorCode;

    .line 28
    iput-object v1, p0, Lcom/facebook/orca/server/OperationResult;->f:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/server/OperationResult;->b:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->c:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ErrorCode;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/server/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->e:Lcom/facebook/orca/server/ErrorCode;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->f:Ljava/lang/String;

    .line 58
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/server/OperationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/server/OperationResult;->b:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->c:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    .line 48
    iput-object p1, p0, Lcom/facebook/orca/server/OperationResult;->e:Lcom/facebook/orca/server/ErrorCode;

    .line 49
    iput-object p2, p0, Lcom/facebook/orca/server/OperationResult;->f:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/server/OperationResult;->b:Z

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/OperationResult;->c:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    .line 37
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->NO_ERROR:Lcom/facebook/orca/server/ErrorCode;

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->e:Lcom/facebook/orca/server/ErrorCode;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/server/OperationResult;->f:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    new-instance v1, Lcom/facebook/orca/server/OperationResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/facebook/orca/server/OperationResult;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static varargs a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/facebook/orca/server/OperationResult;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string v0, "result"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    array-length v4, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, p1, v2

    .line 104
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/OperationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/server/OperationResult;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/server/ErrorCode;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter

    .prologue
    .line 116
    new-instance v0, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0}, Lcom/facebook/orca/server/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/orca/server/OperationResult;-><init>(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/server/ErrorCode;Landroid/os/Bundle;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Lcom/facebook/orca/server/OperationResult;

    invoke-virtual {p0}, Lcom/facebook/orca/server/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/orca/server/OperationResult;-><init>(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Lcom/facebook/orca/server/OperationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/orca/server/OperationResult;-><init>(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;
    .locals 2
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/facebook/orca/server/OperationResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/server/OperationResult;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static b()Lcom/facebook/orca/server/OperationResult;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/facebook/orca/server/OperationResult;->a:Lcom/facebook/orca/server/OperationResult;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/facebook/orca/server/OperationResult;->b:Z

    return v0
.end method

.method public final d()Lcom/facebook/orca/server/ErrorCode;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->e:Lcom/facebook/orca/server/ErrorCode;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/facebook/orca/server/OperationResult;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->d:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->e:Lcom/facebook/orca/server/ErrorCode;

    invoke-virtual {v0}, Lcom/facebook/orca/server/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/server/OperationResult;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
