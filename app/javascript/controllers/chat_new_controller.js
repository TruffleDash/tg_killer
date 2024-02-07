import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["userSelect", "chatType"]

  updateChatType() {
    const selectedUsers = this.userSelectTarget.querySelectorAll('input[type="checkbox"]:checked');
    const chatType = selectedUsers.length > 1 ? 'group' : 'private';
    this.chatTypeTarget.value = chatType;
  }
}
