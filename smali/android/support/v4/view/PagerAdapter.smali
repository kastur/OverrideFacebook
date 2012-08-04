.class public abstract Landroid/support/v4/view/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/PagerAdapter;->a:Landroid/database/DataSetObservable;

    return-void
.end method

.method public static c()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, -0x1

    return v0
.end method

.method public static f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method private static g()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static h()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {}, Landroid/support/v4/view/PagerAdapter;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {}, Landroid/support/v4/view/PagerAdapter;->h()V

    .line 125
    return-void
.end method

.method final b(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v4/view/PagerAdapter;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    return-void
.end method

.method public abstract b()Z
.end method
