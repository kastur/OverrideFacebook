.class public abstract Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;
.super Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;
.source "ProfileListCursorAdapter.java"


# instance fields
.field protected c:Landroid/database/Cursor;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/katana/activity/profilelist/ProfileListActivity$ProfileListAdapter;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->b()I

    move-result v0

    return v0
.end method

.method public final b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method protected final c(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;

    .line 48
    invoke-virtual {v0}, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter$Section;->a()I

    move-result v0

    .line 49
    add-int/2addr v0, p2

    .line 50
    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/katana/activity/profilelist/ProfileListCursorAdapter;->c:Landroid/database/Cursor;

    return-object v0
.end method
