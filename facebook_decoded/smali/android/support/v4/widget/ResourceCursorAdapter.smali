.class public abstract Landroid/support/v4/widget/ResourceCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {v0, v1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 106
    const/4 v0, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
