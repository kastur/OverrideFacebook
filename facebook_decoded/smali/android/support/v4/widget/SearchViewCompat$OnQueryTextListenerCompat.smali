.class public abstract Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Landroid/support/v4/widget/SearchViewCompat;->a()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->a(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method
