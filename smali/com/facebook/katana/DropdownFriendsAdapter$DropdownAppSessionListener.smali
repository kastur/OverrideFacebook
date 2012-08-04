.class public Lcom/facebook/katana/DropdownFriendsAdapter$DropdownAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "DropdownFriendsAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/DropdownFriendsAdapter;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/DropdownFriendsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/katana/DropdownFriendsAdapter$DropdownAppSessionListener;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter$DropdownAppSessionListener;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-virtual {v0, p4}, Lcom/facebook/katana/DropdownFriendsAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/katana/DropdownFriendsAdapter$DropdownAppSessionListener;->a:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/DropdownFriendsAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 182
    return-void
.end method
