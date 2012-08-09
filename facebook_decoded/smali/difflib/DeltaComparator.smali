.class public Ldifflib/DeltaComparator;
.super Ljava/lang/Object;
.source "DeltaComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Ldifflib/Delta;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ldifflib/Delta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ldifflib/DeltaComparator;

    invoke-direct {v0}, Ldifflib/DeltaComparator;-><init>()V

    sput-object v0, Ldifflib/DeltaComparator;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static a(Ldifflib/Delta;Ldifflib/Delta;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v0

    invoke-virtual {v0}, Ldifflib/Chunk;->a()I

    move-result v0

    .line 18
    invoke-virtual {p1}, Ldifflib/Delta;->a()Ldifflib/Chunk;

    move-result-object v1

    invoke-virtual {v1}, Ldifflib/Chunk;->a()I

    move-result v1

    .line 19
    if-le v0, v1, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    .line 21
    :cond_0
    if-ge v0, v1, :cond_1

    .line 22
    const/4 v0, -0x1

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p1, Ldifflib/Delta;

    check-cast p2, Ldifflib/Delta;

    invoke-static {p1, p2}, Ldifflib/DeltaComparator;->a(Ldifflib/Delta;Ldifflib/Delta;)I

    move-result v0

    return v0
.end method
